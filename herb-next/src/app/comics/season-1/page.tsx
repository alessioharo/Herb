import { PrismaClient } from '@/generated/prisma';
import ComicHeader from '../../components/ComicHeader';

const prisma = new PrismaClient();

export default async function Season1Page() {
  const comics = await prisma.comic.findMany({
    where: { season: 1 },
    orderBy: [{ episode: 'asc' }],
    include: { panels: true },
  });

  return (
    <main>
      <div>
        {comics.map((comic: any) => (
          <div key={comic.id} className="flex flex-col items-start mb-8">
            <ComicHeader
              season={comic.season}
              title={comic.title}
              date={comic.date}
            />
          </div>
        ))}
      </div>
    </main>
  );
}

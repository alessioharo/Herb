
import { PrismaClient } from '@/generated/prisma';

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
          <div key={comic.id} className="flex flex-col items-center">
            <img
              src={comic.imageUrl}
              alt={comic.title + ' cover'}
              className="w-full max-w-xs rounded shadow mb-2"
            />
            <h2 className="text-lg font-semibold mt-2">{comic.title}</h2>
            <p className="text-gray-500">Episode {comic.episode}</p>
          </div>
        ))}
      </div>
    </main>
  );
}

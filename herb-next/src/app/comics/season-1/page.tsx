import { PrismaClient, Prisma } from '@/generated/prisma';
import Season1 from './Season1';

export const dynamic = "force-dynamic";
const prisma = new PrismaClient();

export default async function Season1Page() {
  const comics = await prisma.comic.findMany({
    where: { season: 1 },
    orderBy: [{ episode: 'asc' }],
    include: { panels: true },
  });

  type ComicWithPanels = Prisma.ComicGetPayload<{
    include: { panels: true };
  }>;

  // Convert date to string for client component
  const clientComics = comics.map((comic: ComicWithPanels) => ({
    ...comic,
    date: typeof comic.date === 'string' ? comic.date : comic.date.toISOString(),
  }));

  return (
    <main>
      <Season1 comics={clientComics} />
    </main>
  );
}
import { PrismaClient, Prisma } from '@prisma/client';
import Season2 from './Season2';

export const dynamic = "force-dynamic";
const prisma = new PrismaClient();

export default async function Season2Page() {
  const comics = await prisma.comic.findMany({
    where: { season: 2 },
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
      <Season2 comics={clientComics} />
    </main>
  );
}
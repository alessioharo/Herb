import { PrismaClient } from '../src/generated/prisma';

const prisma = new PrismaClient();

async function main() {
  const comic1 = await prisma.comic.create({
    data: {
      season: 1,
      episode: 1,
      title: 'Corporate Cat',
      date: new Date('2020-03-21'),
      imageUrl: 'https://media.herbcomic.com/herb-s01-e01-cover.jpg',
      panels: {
        create: Array.from({ length: 24 }, (_, i) => ({
          panel: i + 1,
          imageUrl: `https://media.herbcomic.com/herb-s01-e01-p${String(i + 1).padStart(2, '0')}.jpg`,
        })),
      },
    },
  });

  console.log('Seeded comics:', comic1);
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });

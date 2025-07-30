import { NextResponse } from 'next/server';
import { PrismaClient } from '@/generated/prisma';

const prisma = new PrismaClient();

export async function GET() {
  // Fetch all comics with their panels
  const comics = await prisma.comic.findMany({
    include: {
      panels: true,
    },
    orderBy: [
      { season: 'asc' },
      { episode: 'asc' },
    ],
  });
  return NextResponse.json(comics);
}

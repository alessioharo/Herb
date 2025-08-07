import { defineConfig } from 'prisma/config';

export default defineConfig({
  seed: 'ts-node --loader ts-node/esm prisma/seed.ts',
});
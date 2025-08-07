const { defineConfig } = require('prisma/config');

module.exports = defineConfig({
  seed: 'ts-node --loader ts-node/esm prisma/seed.ts',
});

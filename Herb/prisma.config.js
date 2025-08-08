require('dotenv').config();
const { defineConfig } = require('prisma/config');

module.exports = defineConfig({
  seed: 'ts-node prisma/seed.ts',
});

module.exports = {
    branches: ['main'],
    plugins: [
      '@semantic-release/commit-analyzer',
      '@semantic-release/release-notes-generator',
      '@semantic-release/changelog',
      '@semantic-release/npm',
<<<<<<< HEAD
      [
        '@semantic-release/git',
        {
          assets: ['package.json', "dist/**/*", 'CHANGELOG.md'],
          message: 'chore(release): ${nextRelease.version} [skip ci]\n\n${nextRelease.notes}',
        },
      ]
=======
      '@semantic-release/git',
      {
        "path": "@semantic-release/exec",
        "cmd": "npm run build"
      },
      {
        "path": "@semantic-release/git",
        "assets": ["package.json", "dist/**/*", "CHANGELOG.md"]
      },
      {
        "path": "@semantic-release/exec",
        "cmd": "npm publish --registry https://registry.npmjs.org/"
      }
>>>>>>> main
    ],
  };
  
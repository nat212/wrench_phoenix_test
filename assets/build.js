const esbuild = require('esbuild');
const sveltePlugin = require('esbuild-svelte');

const args = process.argv.slice(2);

const watch = args.includes('--watch');
const deploy = args.includes('--deploy');

const loader = {

};

const plugins = [
  sveltePlugin(),
];

let opts = {
  entryPoints: ['js/app.js'],
  mainFields: ['svelte', 'browser', 'module', 'main'],
  bundle: true,
  minify: false,
  target: 'es2017',
  outdir: '../priv/static/assets',
  logLevel: 'info',
  loader,
  plugins,
};

if (watch) {
  opts = {
    ...opts,
    sourcemap: 'inline',
  };
}

if (deploy) {
  opts = {
    ...opts,
    minify: true,
  };
}

esbuild.context(opts).then(context => {
  if (watch) {
    context.watch();
  }
});
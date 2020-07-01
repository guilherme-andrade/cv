const { environment } = require('@rails/webpacker')
const svgSpritesLoader = require('./loaders/svg-sprites');

environment.loaders.append('svg-sprites', svgSpritesLoader);

environment.loaders.get('sass').use.splice(-1, 0, {
  loader: 'resolve-url-loader'
});

module.exports = environment;

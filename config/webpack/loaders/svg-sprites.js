module.exports = {
  test: /\.svg$/,
  use: [
    { loader: 'svg-sprite-loader' },
    'svg-transform-loader',
    'svgo-loader'
  ]
};

# ImaginaChingon.mx

## Development

Install the dependencies:

```sh
bundle install
```

Then serve the site:

```sh
# This will serve the site at http://127.0.0.1:4000/
bundle exec jekyll serve
```

### Image processing

Install imagemagick or [download it](https://www.imagemagick.org/script/download.php):

```
brew install imagemagick
```

Then just call the script from the root directory of the project:

```
./scripts/process-images.sh
```

This will generate all the needed images in `images/processed`.

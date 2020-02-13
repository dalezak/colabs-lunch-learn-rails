# Bootstrap
- https://github.com/twbs/bootstrap-rubygem
```
bundle add bootstrap
```
- `Gemfile`
- Another option is `Webpack` + `Yarn`
```
yarn add bootstrap jquery popper.js
```
- `app/javascript/stylesheets/application.scss`
```
@import "~bootstrap/scss/bootstrap";
```
- `app/javascript/packs/application.js`
```
import "bootstrap";
import "../stylesheets/application";
```
```
rails s
```
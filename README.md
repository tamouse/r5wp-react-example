# Rails 5 API with WebPacker React

Trial/Learning space to build out a Rails 5 API with WebPacker React
client.

The plan is to build a Rails application that is only serving as an
API, beyond delivering the index.html root page, which will serve the
single page application.

The React application will be a basic Posts + Comments app.

Eventually, I hope to integrate users and auth.

## Initialized with:

    rails new r5api-react --skip-javascript --skip-action-cable --skip-sprockets --skip-coffee --api

## Changes:

(I really should have made an initial commit right after running the
rails new. *sigh*)

- removed `app/assets/`
- changed `config/routes`:

  - root points to `ApplicationController#index` which renders
    `app/views/pages/index.html.erb`
  - `app/views/pages/index.html.erb` is empty
  - `app/views/layouts/application.html.erb` is stripped of the
    application javascripts and stylesheets, and only contains the
    javascript pack tag (pointing to the
    `app/javascripts/pack/helloworld.jsx` app right now.)



## Building

- created `Api::V1::Base` controller for api controllers to inherit from
- created `Post` model and `Api::V1::PostsController`

# LinkExtractorWeb

To start your new Phoenix application you have to:

1. Install dependencies with `mix deps.get`
2. Start Phoenix router with `mix phoenix.start`

Now you can visit `localhost:4000` from your browser.

## Testing

```
MIX_ENV=test mix test
```

NOTE: It's necessary to specify MIX_ENV because ExConf doesn't yet test Mix.env,
and mix no longer sets MIX_ENV env var.

## Notes

* If you choose to change the application's structure, you could manually start the router from your code like this `LinkExtractorWeb.Router.start`

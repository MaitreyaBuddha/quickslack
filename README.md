# QuickSlack

Slack integration for many things, starting with urban dictionary.

## Seriously?

Yes.

## How?

* Download Gifbot and run `bundle install --path .gems` in the `quickslack` directory. You may need to `sudo gem install bundler` first.

* Set up an outgoing webhook migration in Slack using `http://host:port/ud` (or appropriate for each integration) as the URL, substituting the host and port that you'll be running the server on. (Unless you tell it otherwise, Sinatra runs on port 4567 by default.) You may opt to configure `#` as the default trigger word for the webhook.

* Slack will give you an application token for this integration; note it. 

* Edit `slackbot.rb` and set your `SLACK_TOKEN`. You _must_ do this or Gifbot will ignore all attempts to communicate.

* Run `./start_gifbot.sh` on a public webserver, in a screen(1) session or something. 

## Are you kidding?

Yes. Keep Screwing around.

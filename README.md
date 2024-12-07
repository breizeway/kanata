# Kanata Keymap (macOS)

## Documentation

- [Kanata Docs](https://github.com/jtroo/kanata/blob/main/docs/config.adoc)
- Go to the [releases page](https://github.com/jtroo/kanata/releases) for update & installation instructions

## Local Setup

- Follow setup instructions and install the appropriate Kanata diver from the releases page above and save it to this repo
- Make sure the name of the driver matches the one in `start-kanata.zsh`
- Create a `password.txt` file in this repo with your user account password
- Create an app (App 1) with Automator
  - Add a single action to the app `Run Shell Script`
  - Set shell to `zsh`
  - Add the script `cd <absolute path to this repo> && zsh start-kanata.zsh`
    - I found this app will not work as a login item. _But_ if you create another Automator app (App 2) with an action to launch the first app, and add that second app to login items (in `System Settings`), that _will_ work.
- Save both apps to the `/apps` dir (`gitignore`d)
- Give App 1 input monitoring permissions at `System Settings > Privacy & Security > Input Monitoring` (macOS 14 Sonoma) (you will need to remove and add permissions again any time you change the text of the script in the app)
- Add the app to login items in System Settings
- Open the app to start Kanata.
- Output will be saved to `./nohup.out`.
- You should see the app running in your menu bar

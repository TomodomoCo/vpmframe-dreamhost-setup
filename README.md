# vpmframe-dreamhost-setup

This shell script (use with caution! read before you execute!) sets up a Dreamhost shared hosting shell account for vpmframe, by whitelisting support for PHP .phar files, installing Composer, and aliasing the .phar to the standard `composer` command. It also sets up the target user's directory tree.

## Usage

1. [Add Hosting to a Domain / Sub-Domain](https://panel.dreamhost.com/index.cgi?tree=domain.manage&current_step=Index&next_step=ShowAddhttp&domain=) in your Dreamhost account
2. Create a new user for the project
3. Set the web directory to `/home/username/domain.com/current/public`
4. ~~Optionally enable HTTPS (recommended)~~ We now recommend adding your certificate after completing initial setup. If you use Let's Encrypt, your deploy tool will need to ensure the `.well-known` subfolder (inside the public directory) is properly moved around.
5. Wait a few moments, then [edit the new user](https://panel.dreamhost.com/index.cgi?tree=users.users&), setting it to a shell account (default is SFTP)
6. SSH into your account: `ssh username@server.dreamhost.com` (you might want to use this step to add your SSH keys for passwordless login)
7. Clone this repo to your user directory: `cd ~ && git clone https://github.com/vanpattenmedia/vpmframe-dreamhost-setup.git`
8. Run the dreamhost.sh script, passing domains to set up as your parameters: `~/vpmframe-dreamhost-setup/dreamhost.sh domain.com staging.domain.com`
9. Check to see if you've got Composer working: `composer --version`
0. Once you're satisfied with everything: `rm -rf ~/vpmframe-dreamhost-setup`

## License & Conduct

This project is licensed under the terms of the MIT License, included in `LICENSE.md`.

All Van Patten Media Inc. open source projects follow a strict code of conduct, included in `CODEOFCONDUCT.md`. We ask that all contributors adhere to the standards and guidelines in that document.

Thank you!

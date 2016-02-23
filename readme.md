# vpmframe-dreamhost-setup

This shell script (use with caution! read before you execute!) sets up a Dreamhost shared hosting shell account for vpmframe, by whitelisting support for PHP .phar files, installing Composer, and aliasing the .phar to the standard `composer` command. It also sets up the target user's directory tree.

## Usage

1.  [Add Hosting to a Domain / Sub-Domain](https://panel.dreamhost.com/index.cgi?tree=domain.manage&current_step=Index&next_step=ShowAddhttp&domain=) in your Dreamhost account
2.  Create a new user for the project
3.  Set the web directory to `/home/username/domain.com/current/public`
4.  Optionally enable HTTPS (recommended)
5.  Wait a few moments, then [edit the new user](https://panel.dreamhost.com/index.cgi?tree=users.users&), setting it to a shell account (default is SFTP)
6.  Download dreamhost.sh from this directory
7.  Upload dreamhost.sh to your account with `scp dreamhost.sh username@server.dreamhost.com:~`
8.  SSH into your account: `ssh username@server.dreamhost.com`
9.  Add the executable bit to the dreamhost.sh script: `chmod +x dreamhost.sh`
10. Run the dreamhost.sh script, passing the domain to set up as your first parameter: `./dreamhost.sh domain.com`

## License

**Copyright (c) 2016 [Van Patten Media Inc.](https://www.vanpattenmedia.com/) All rights reserved.**

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

*   Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
*   Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
*   Neither the name of the organization nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

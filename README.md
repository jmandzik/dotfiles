Install Git
===========
`git` (OS X 10.10 will automatically prompt for Xcode CLI tools installation)

[Install Homebrew](http://brew.sh)
================
`ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`

[Install Password Store](http://www.passwordstore.org)
======================
* `git clone git@github.com:jmandzik/pass.git ~/.password-store`
* make sure the following is backed up and restored from ~/.gnupg/
  ```
  -rw-------@  1 jmandzik  staff  9188 Aug  3 11:49 gpg.conf
  drwx------   2 jmandzik  staff    68 Aug  3 11:49 private-keys-v1.d
  -rw-------@  1 jmandzik  staff  1200 Aug  3 11:49 pubring.gpg
  -rw-------@  1 jmandzik  staff  1200 Aug  3 11:49 pubring.gpg~
  -rw-------@  1 jmandzik  staff   600 Aug  3 11:49 random_seed
  -rw-------@  1 jmandzik  staff  2578 Aug  3 11:49 secring.gpg
  -rw-------@  1 jmandzik  staff  1280 Aug  3 11:49 trustdb.gpg
  ```

[(Oh My) Zsh](https://github.com/robbyrussell/oh-my-zsh)
==============
* `curl -L http://install.ohmyz.sh | sh`

Bootstrap
=============
```
mkdir -p ~/Projects
cd ~/Projects
git clone https://github.com/jmandzik/dotfiles.git
ln -s ~/Projects/dotfiles ~/dotfiles
cd dotfiles
~/dotfiles/bootstrap.sh
echo "# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME=\"Justin Mandzik\"
GIT_COMMITTER_NAME=\"\$GIT_AUTHOR_NAME\"
git config --global user.name \"\$GIT_AUTHOR_NAME\"
GIT_AUTHOR_EMAIL=\"justin@mandzik.org\"
GIT_COMMITTER_EMAIL=\"\$GIT_AUTHOR_EMAIL\"
git config --global user.email \"\$GIT_AUTHOR_EMAIL\"" >> ~/.extra
source ~/.extra
```

Install Additional Tools
=================

* [Atom](https://github.com/atom/atom/releases/latest) - Code Editor
* `npm install -g gulp karma-cli protractor jshint json curl-trace-parser`
* `webdriver-manager update`
* [Bartender](http://www.macbartender.com)
* [Fluid](http://fluidapp.com)

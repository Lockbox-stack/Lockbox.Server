![Lockbox](http://spetz.github.io/img/lockbox_logo.png)

# Dead simple, centralized and secured storage for your credentials - hostable API.
# [getlockbox.com](https://getlockbox.com)


|Branch             |Build status                                                  
|-------------------|-----------------------------------------------------
|master             |[![master branch build status](https://api.travis-ci.org/Lockbox-stack/Lockbox.Server.svg?branch=master)](https://travis-ci.org/Lockbox-stack/Lockbox.Server)
|develop            |[![develop branch build status](https://api.travis-ci.org/Lockbox-stack/Lockbox.Server.svg?branch=develop)](https://travis-ci.org/Lockbox-stack/Lockbox.Server/branches)

**Quick start**
----------------

Run docker container which requires an external [MongoDB](https://www.mongodb.com) instance (e.g. running on localhost):
```
docker pull lockbox/lockbox.server
docker run -p 5000:5000 lockbox.server 
```

Or use the docker compose:

```
git clone https://github.com/Lockbox-stack/Lockbox.Server
docker-compose up
```

Open the web browser at [http://localhost:5000](http://localhost:5000) - Lockbox API should be up and running!

For more information please navigate to the main Lockbox [repository](https://github.com/Lockbox-stack/Lockbox).

* git configuration information

```
    [remote "origin"]
        fetch = +refs/heads/*:refs/remotes/origin/*
        url = git@github.com:dgdosen/dosenfinancial-com.git
    [branch "master"]
        remote = origin
        merge = refs/heads/master
    [remote "heroku"]
        url = git@heroku.com:dosenfinancial-com.git
        fetch = +refs/heads/*:refs/remotes/heroku/*
```

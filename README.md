# ffd-php
Full Fat Docker PHP runtime is a Docker image for PHP CLI intended to be useful for developers by providing a usable PHP environment through Docker, without needing to install anything in the developer system.

Ideally new extensions should be added to the ffd-php image to cover all the possible use cases of the developer, but they're not as of now. Have patience or make a pull request please.

## How to use
You can use the [asierpazm/ffd-php](https://hub.docker.com/repository/docker/asierpazm/ffd-php/general) Docker Hub image or build your own. If you wish to use the Docker Hub one, run the following command:
```bash
$ sudo docker run --rm -it -v `pwd`:/app -w /app -u`id -u`:`id -g` asierpazm/ffd-php -m
```

The image defines `php` as the default command if you don't specify anything else, but you could of course call `php` explicitly or just run other commands like `ls` or whatever you need.

Since the command is a bit too big, you could add a convenient alias to your `.bashrc` / `.zshrc` / `.profile` or whatever like this:
```bash
alias ffd-php='sudo docker run --rm -it -v `pwd`:/app -w /app -u`id -u`:`id -g` asierpazm/ffd-php'
```

Now you can easily install dependencies through composer from a local project or run php scripts like this:
```bash
$ ffd-php composer require psr/log
```
```bash
$ ffd-php -f hello.php
```

## Build your own
To build your own image, with or without your own changes, clone this repository and run the following commands:
```bash
$ sudo docker build -t ffd-php .
```

## Installed extensions
| Extension name          | Included |
|-------------------------|:--------:|
| Apache                  |     ✅   |
| APCu                    |          |
| Arrays                  |     ✅   |
| BC Math                 |     ✅   |
| Bzip2                   |     ✅   |
| Calendar                |     ✅   |
| Classes/Objects         |     ✅   |
| CommonMark              |          |
| COM                     |          |
| Componere               |          |
| Ctype                   |     ✅   |
| CUBRID                  |          |
| cURL                    |     ✅   |
| Date/Time               |     ✅   |
| DBA                     |          |
| dBase                   |          |
| Direct IO               |          |
| Directories             |     ✅   |
| DOM                     |     ✅   |
| Data Structures         |          |
| Eio                     |          |
| Enchant                 |          |
| Error Handling          |     ✅   |
| Ev                      |          |
| Event                   |          |
| Program execution       |     ✅   |
| Exif                    |     ✅   |
| Expect                  |          |
| FANN                    |          |
| FDF                     |          |
| FFI                     |     ✅   |
| Fileinfo                |     ✅   |
| Filesystem              |     ✅   |
| Filter                  |     ✅   |
| FastCGI Process Manager |          |
| FTP                     |     ✅   |
| Function Handling       |     ✅   |
| Gearman                 |          |
| Gender                  |          |
| GeoIP                   |          |
| Gettext                 |     ✅   |
| Gmagick                 |          |
| GMP                     |     ✅   |
| GnuPG                   |          |
| Hash                    |     ✅   |
| HRTime                  |          |
| Firebird/InterBase      |          |
| IBM DB2                 |          |
| iconv                   |     ✅   |
| Igbinary                |          |
| GD                      |     ✅   |
| ImageMagick             |          |
| IMAP                    |     ✅   |
| PHP Options/Info        |     ✅   |
| Inotify                 |          |
| intl                    |     ✅   |
| JSON                    |     ✅   |
| LDAP                    |     ✅   |
| libxml                  |     ✅   |
| Lua                     |          |
| LuaSandbox              |          |
| LZF                     |          |
| Mail                    |     ✅   |
| Mailparse               |          |
| Math                    |     ✅   |
| Multibyte String        |     ✅   |
| Mcrypt                  |          |
| Memcache                |          |
| Memcached               |          |
| Mhash                   |          |
| Misc.                   |     ✅   |
| mqseries                |          |
| MySQL (Original)        |          |
| Mysql_xdevapi           |          |
| MySQLi                  |     ✅   |
| Mysqlnd                 |     ✅   |
| Network                 |     ✅   |
| OAuth                   |          |
| OCI8                    |          |
| OPcache                 |     ✅   |
| OpenAL                  |          |
| OpenSSL                 |     ✅   |
| Output Control          |     ✅   |
| parallel                |          |
| Parle                   |          |
| Password Hashing        |     ✅   |
| PCNTL                   |     ✅   |
| PCRE                    |     ✅   |
| PDO                     |     ✅   |
| CUBRID (PDO)            |          |
| MS SQL Server (PDO) [dblib] |     ✅   |
| Firebird (PDO)          |     ✅   |
| IBM (PDO)               |          |
| Informix (PDO)          |          |
| MySQL (PDO)             |     ✅   |
| Oracle (PDO)            |          |
| ODBC and DB2 (PDO)      |          |
| PostgreSQL (PDO)        |          |
| SQLite (PDO)            |     ✅   |
| MS SQL Server (PDO) [sqlsrv] |          |
| PostgreSQL              |          |
| Phar                    |     ✅   |
| phpdbg                  |          |
| POSIX                   |     ✅   |
| PS                      |          |
| Pspell                  |          |
| pthreads                |          |
| Quickhash               |          |
| Radius                  |          |
| Random                  |     ✅   |
| Rar                     |          |
| Readline                |     ✅   |
| Recode                  |          |
| Reflection              |     ✅   |
| Rnp                     |          |
| RpmInfo                 |          |
| RRD                     |          |
| runkit7                 |          |
| ScoutAPM                |          |
| Seaslog                 |          |
| Semaphore               |          |
| Sessions                |     ✅   |
| Shared Memory           |     ✅   |
| Simdjson                |          |
| SimpleXML               |     ✅   |
| SNMP                    |          |
| SOAP                    |     ✅   |
| Sockets                 |     ✅   |
| Sodium                  |     ✅   |
| Solr                    |          |
| SPL                     |     ✅   |
| SQLite3                 |     ✅   |
| SQLSRV                  |          |
| ssdeep                  |          |
| SSH2                    |          |
| Statistics              |          |
| Stomp                   |          |
| Streams                 |     ✅   |
| Strings                 |     ✅   |
| SVM                     |          |
| SVN                     |          |
| Swoole                  |          |
| Sync                    |          |
| Taint                   |          |
| TCP                     |          |
| Tidy                    |          |
| Tokenizer               |     ✅   |
| Trader                  |          |
| UI                      |          |
| ODBC                    |          |
| uopz                    |          |
| URLs                    |     ✅   |
| V8js                    |          |
| Variable handling       |     ✅   |
| var_representation      |          |
| Varnish                 |          |
| WDDX                    |          |
| win32service            |          |
| WinCache                |          |
| wkhtmltox               |          |
| xattr                   |          |
| xdiff                   |          |
| Xhprof                  |          |
| XLSWriter               |          |
| XML Parser              |     ✅   |
| XMLDiff                 |          |
| XMLReader               |     ✅   |
| XML-RPC                 |          |
| XMLWriter               |     ✅   |
| XSL                     |          |
| Yac                     |          |
| Yaconf                  |          |
| Yaf                     |          |
| Yaml                    |          |
| Yar                     |          |
| YAZ                     |          |
| Zip                     |          |
| Zlib                    |     ✅   |
| 0MQ messaging           |          |
| ZooKeeper               |          |

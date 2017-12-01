# Zengin Code Search

## Rails New

```
$ rails new zengin-code-search --api
$ cd zengin-code-search/
```

## Generate Scaffold

```
$ rails generate scaffold bank code name name_kana name_hira name_en
$ rails generate scaffold branch code name name_kana name_hira name_en bank:references
$ rails db:migrate
```

## Rails Server

```
$ rails server
$ open http://localhost:3000/banks
```

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

## Database Seed

```
$ rails db:seed
Bank: 1345, Branch: 31169
```

## Overriding Named Route Parameters

```
$ open http://localhost:3000/banks/0001
$ open http://localhost:3000/banks/0001/branches/001
```

* http://guides.rubyonrails.org/routing.html#overriding-named-route-parameters

## Search API

```
$ rails generate controller search/banks index
$ rails generate controller search/branches index
```

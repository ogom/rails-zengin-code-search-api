# Zengin Code Search

## Installation

```
$ git clone https://github.com/ogom/rails-zengin-code-search-api.git
$ cd rails-zengin-code-search-api/
$ bundle
$ rails db:setup
$ rails server
```

## Tests

```
$ rails test
```

## Tutorial

### Rails New

```
$ rails new zengin-code-search --api
$ cd zengin-code-search/
```

### Generate Scaffold

```
$ rails generate scaffold bank code name name_kana name_hira name_en
$ rails generate scaffold branch code name name_kana name_hira name_en bank:references
$ rails db:migrate
```

### Rails Server

```
$ rails server
$ open http://localhost:3000/banks
```

### Database Seed

```
$ rails db:seed
Bank: 1345, Branch: 31169
```

### Overriding Named Route Parameters

```
$ open http://localhost:3000/banks/0001
$ open http://localhost:3000/banks/0001/branches/001
```

### Search API

```
$ rails generate controller search/banks index
$ rails generate controller search/branches index
```

### Model Serializer

```
$ rails generate serializer bank
$ rails generate serializer branch
```

## License

* MIT

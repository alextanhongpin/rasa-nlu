# Rasa NLU

## Train

```bash
$ make train
```

Output:

```json
{
  "info": "new model trained: model_20180412-105317"
}
```

## Status

```bash
$ make test
```

Output:

```json
{
    "available_projects": {
        "default": {
            "available_models": [
                "fallback"
            ],
            "loaded_models": [
                "fallback"
            ],
            "status": "ready"
        },
        "food": {
            "available_models": [
                "fallback",
                "model_20180412-105317"
            ],
            "loaded_models": [
                "fallback"
            ],
            "status": "ready"
        }
    }
}
```

## Test

```bash
$ make test
```

Output:

```json
```
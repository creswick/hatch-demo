This project is intended to show an "idealized" python project with
static anylisis, test targets, and some basic distribution logic.

It's based on `hatch`.

# Development

## Running the application

There is a main entry point defined such that it will be available as
a shell command once this package is installed. (`hatch-demo`)

During development though, you can run the same thing via a duplicated
implementation in the `main` environment.  (See
https://github.com/pypa/hatch/issues/1632 for discussion about this
duplication.)

```
hatch run main:hatch-demo
```

## Using with Docker

You need to have docker running (E.g. docker desktop)

Build the image:

```
$ hatch run docker:build-image
```

Run:
```
$ hatch run docker:run-image
```

## Build a distribution

The sdist and a pure-python wheel can be built with:

```
$ hatch build
```

The results will be put in `dist`

## Testing and Linting

Run all static checks:
```
$ hatch run lint:all
```

Run only the type checks:
```
$ hatch run lint:typecheck
```

Run tests (but no static checks):
```
$ hatch test
```

Run tests with coverage:
```
$ hatch test --cover
```

More details about hatch test can be found here: https://hatch.pypa.io/1.13/tutorials/testing/overview/#pyprojecttoml



# Notes about hatch

I've found the hatch documentation a bit lacking, in particular the discussion about how to use environment scripts.

Here are a few things I've learned about how they work which I did not find in the documentation.

Given an environment/script section like this:

```
[tool.hatch.envs.foo.scripts]
bar = "someCommand"
```

You can invoke `someCommand` with:

```
$ hatch run foo:bar
```

and it will run in the hatch environment defined by
`tool.hatch.envs.foo`, which can have dependencies,
extra-dependencies, and other scripts or settings that can be used in
the script command deffinition.

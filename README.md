This project is intended to show an "idealized" python project with
static anylisis, test targets, and some basic distribution logic.

It's based on `hatch`.

# Development

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

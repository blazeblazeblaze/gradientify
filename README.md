### gradientify
Takes three arguments - hex colours and number of steps to perform.
Outputs an array of hexadecimal RGB colour code.

## Before your use
* ```bundle install```

## Example of use
```
require "gradient_maker"

g_maker = GradientMaker.new(
  from:  "FF334C",
  to:    "D8FF1A",
  steps: 10
)

g_maker.make

=> ["ff334c", "fa4946", "f55f40", "f0753a", "eb8b34", "e6a12e", "e1b728", "dccd22", "d7e31c", "d2f916"]
```

## CLI
```
ruby bin/gradient_maker --from FF334F --to D8FF1A --steps 10
ruby bin/gradient_maker -f FF334F -t D8FF1A -s 10
```

## Testing
```
rspec spec/
```

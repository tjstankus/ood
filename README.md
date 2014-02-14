ood
===

take01
------

In this take, the strategy pattern is employed. Typically the strategy pattern
is used to extract discrete logic into objects. The strategy approach can rid
code of complex conditional logic that differentiates on logic.

In this case, there is no logic differences, per se, but there are differences
in the content of generated strings, which lends itself, somewhat
asymptotically, to a strategy approach.

[ More info about the strategy pattern goes here. ]

The secret sauce behind this implementation is the VERSE_STRATEGIES hash which
serves as a method dispatch table.

The biggest flaw with this code is that the strategy classes do not have a
consistent interface. They *could* have a consistent interface - we could pass
count to each of the verse class methods, then simply ignore it. But, that would
be more confusing than the inconsistent interface. We bake the knowledge of the
different strategy interfaces into the verse_via_strategy method, which acts as
a factory.

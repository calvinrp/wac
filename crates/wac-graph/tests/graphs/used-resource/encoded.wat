(component
  (type (;0;)
    (instance
      (export (;0;) "my-resource" (type (sub resource)))
    )
  )
  (import "test:foo/my-interface" (instance (;0;) (type 0)))
  (alias export 0 "my-resource" (type (;1;)))
  (import "my-resource" (type (;2;) (eq 1)))
  (import "my-resource2" (type (;3;) (eq 2)))
  (type (;4;)
    (component
      (type (;0;)
        (instance
          (export (;0;) "my-resource" (type (sub resource)))
        )
      )
      (import "test:foo/my-interface" (instance (;0;) (type 0)))
      (alias export 0 "my-resource" (type (;1;)))
      (import "my-resource" (type (;2;) (eq 1)))
      (import "my-resource2" (type (;3;) (eq 2)))
      (type (;4;) (own 3))
      (type (;5;) (func (param "r" 4)))
      (export (;0;) "my-func" (func (type 5)))
    )
  )
  (import "unlocked-dep=<test:foo>" (component (;0;) (type 4)))
  (instance (;1;) (instantiate 0
      (with "test:foo/my-interface" (instance 0))
      (with "my-resource" (type 2))
      (with "my-resource2" (type 3))
    )
  )
  (alias export 1 "my-func" (func (;0;)))
  (export (;1;) "my-func" (func 0))
)

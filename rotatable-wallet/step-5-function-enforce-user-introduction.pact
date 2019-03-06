(define-keyset 'module-admin
  (read-keyset "module-admin-keyset"))

(define-keyset 'operate-admin
  (read-keyset "module-operate-keyset"))

(module auth 'module-admin

  (defschema user
    nickname:string
    keyset:keyset
    )

  (deftable users:{user})

  (defun create-user (id nickname keyset)
    (enforce-keyset 'operate-admin)
    (insert users id {
      "keyset": keyset,
      "nickname": nickname
      })

  ;; 1. Define a function enforce-user-auth that takes a parameter (id)

    ;; 2. Read users table to find id then bind value k equal this id's keyset

    ;; 3. Enforce user authorization of data to the given keyset

      ;; 4. Return the value of the keyset

)

(create-table users)
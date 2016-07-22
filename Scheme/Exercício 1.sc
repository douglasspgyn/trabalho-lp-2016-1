(define retangulo-maior
  (lambda (lado-a1 lado-a2 lado-b1 lado-b2)

    (define retanguloA (* lado-a1 lado-a2))
    (define retanguloB (* lado-b1 lado-b2))

    (cond

      ((> retanguloA retanguloB)
          (print "Retângulo A: " retanguloA)
          (print "Retângulo B: " retanguloB)
          (print "O retângulo A é maior " (- retanguloA retanguloB) " unidades.")
       )
      
      ((> retanguloB retanguloA)
          (print "Retângulo A: " retanguloA)
          (print "Retângulo B: " retanguloB)
          (print "O retângulo B é maior " (- retanguloB retanguloA) " unidades.")
       )  

      ((= retanguloA retanguloB)
          (print "Retângulo A: " retanguloA)
          (print "Retângulo B: " retanguloB)
          (print "Os retângulos apresentam area igual.")
       )
      )
    )
  )
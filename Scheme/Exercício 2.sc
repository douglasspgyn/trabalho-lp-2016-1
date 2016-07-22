(define consumo-total
  (lambda (consumo plano subida descida)
    (define calculoConsumo
      (+
       (/ plano consumo)
       (/ subida (* consumo 0.7))
       (/ descida(* consumo 1.1))
       )
      )
    (print "Foi consumido um total de " calculoConsumo " litros de combustível.")
    )
  )
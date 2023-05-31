program testsimpson
use iso
use mod_integracion
use mod_funciones
implicit none 
    
    !Declaracion de variables
    real(wp)                :: a, b
    real(wp)                :: sx
    integer(il)             :: n = 4
    
    a = 0._wp
    b = 4._wp
    
    
    call simpson(a, b, n, f1, sx)
    !subroutine simpson(a, b , n, f, sx)
    write(*,*)  sx






end program testsimpson

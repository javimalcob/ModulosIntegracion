module mod_integracion
use iso
use mod_funciones

implicit none

contains
        subroutine simpson(a, b , n, f, sx)
                !Descripcion del metodo 
                !Regla de Simpson Compuesta de integracion numerica
                !Declaracion de variables
                real(wp), intent(in)        :: a , b !extremos de integracion
                real(wp)                    :: f     !funcion f
                real(wp), intent(out)       :: sx    !Valor de la integral definida
                integer(il), intent(in)      :: n     !numero par para particionar
                
                !Declaracion de variables auxilares
                real(wp)                :: h        !longitud del intervarlo
                real(wp)                :: sx0      !suma acumulada de los puntos a y b
                real(wp)                :: sx1      !suma acumulada de los puntos impares
                real(wp)                :: sx2      !suma acumulada de los puntos pares
                real(wp)                :: x   
                integer(il)             :: j 
                
                !inicializacion de variables
                sx0 = f(a) + f(b)
                sx1 = 0.0_wp
                sx2 = 0.0_wp       
                x = a
                
                !Verificar que el n pasado como argumento es par
                
                
                
                !Procesamiento
                do j = 1, n-1 
                    x = x + h
                    if (mod(j,2) == 0) then
                        sx2 = sx2 + f(x)
                    else
                        sx1 = sx1 + f(x)
                    end if
                end do
                
                sx = (sx0 + 2._wp*sx2 + 4._wp*sx1) * h/3._wp
                
                
                
                
                
                
        end subroutine simpson



end module mod_integracion

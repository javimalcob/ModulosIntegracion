module mod_integracion
use iso
use mod_funciones

implicit none
        subroutine simpson(a, b , n, f)
                !Descripcion del metodo 
                !Regla de Simpson Compuesta de integracion numerica
                !Declaracion de variables
                real(wp), intent(in)        :: a , b !extremos de integracion
                real(wp), intent(in)        :: f    !funcion f
                integer(il) intent(in)    :: n     !numero par para particionar
                
                !Declaracion 
          

        end subroutine simpson



end module mod_integracion

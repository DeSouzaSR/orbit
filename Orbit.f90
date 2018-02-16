program teste
  ! Calculate orbit
  implicit none
  real, parameter :: p = 10000 ! km
  integer :: i
  real :: eccen, theta

  theta = 0.0
  do while (theta < 360)
    write(*,'(4f12.4)') theta, r(0.0, theta), r(0.25, theta), r(0.5, theta)
    theta = theta + 0.1
  end do

contains

  function r(eccen,theta) result(radio)
    real, intent(in) :: eccen
    real, intent(in) :: theta
    real:: radio

    radio = p / (1 - eccen * cos(real(theta)))
  end function r

end program teste
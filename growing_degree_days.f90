PROGRAM grow
!---------------------------------------------------
! Program to calculate the nubmer of growing
! degree days experienced on a particular
! day based on the high and low temperatures
! (fahrenheit) entered by the user.
!
! Identifiers used are:
! maxT  : Maximum daily recorded temperature (F)
! minT  : Minimum daily recorded temperature (F)
! aveT  : average daily temperature (F)
!         calculated from maxT and minT
! baseT : 50 degrees F
! gdd   : number of growing degree days
!
! Input   : Maximum and minimum recorded 
!           temperatures (F) for the day
! Constant: Base temperature (F)
!---------------------------------------------------

  IMPLICIT NONE
  REAL :: maxT, minT, aveT, gdd
  REAL, PARAMETER :: baseT = 50

  !Obtain values for maxT and minT
  PRINT *, "Enter Maximum Temperature and" // &
       " Minimum Temperature (degrees F)"
  PRINT *, "Separated by a comma or space."
  READ *, maxT, minT

  !Set value of maxT between 50F and 86F
  IF (maxT > 86) THEN
     maxT = 86
  ELSE IF (maxT < 50) THEN
     maxT = 50
  ENDIF

  !Set value of minT between 50F and 86F
  IF (minT < 50) THEN
     minT = 50
  ELSE IF (minT > 86) THEN
     minT = 86
  ENDIF

  !Calculate daily average temperature
  aveT = (maxT + minT) / 2

  !Calculate growing degree days
  gdd = aveT - baseT

  !Make sure gdd is non-negative
  IF (gdd < 0) THEN
     gdd = 0
  ENDIF

  !Display growing degree days
  PRINT *, "Number of growing degree days &
       is", gdd

END PROGRAM grow

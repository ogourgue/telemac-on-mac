!                    *****************
                     SUBROUTINE CORFON
!                    *****************
!
!
!***********************************************************************
! TELEMAC2D   V6P1                                   21/08/2010
!***********************************************************************
!
!brief    MODIFIES THE BOTTOM TOPOGRAPHY.
!
!warning  USER SUBROUTINE
!
!history  J-M HERVOUET (LNHE)
!+        01/03/1990
!+        V5P2
!+
!
!history  N.DURAND (HRW), S.E.BOURBAN (HRW)
!+        13/07/2010
!+        V6P0
!+   Translation of French comments within the FORTRAN sources into
!+   English comments
!
!history  N.DURAND (HRW), S.E.BOURBAN (HRW)
!+        21/08/2010
!+        V6P0
!+   Creation of DOXYGEN tags for automated documentation and
!+   cross-referencing of the FORTRAN sources
!
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
!
      USE BIEF
      USE DECLARATIONS_TELEMAC2D
!
      USE DECLARATIONS_SPECIAL
      IMPLICIT NONE
!
      DOUBLE PRECISION PI
      INTEGER I
!+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
!
!
!+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
!
      LOGICAL MAS
!
!-----------------------------------------------------------------------
!
!  SMOOTHING(S) OF THE BOTTOM (OPTIONAL)
!
      IF(LISFON.GT.0) THEN
!
        MAS=.TRUE.
        CALL FILTER(ZF,MAS,T1,T2,AM1,'MATMAS          ',
     &              1.D0,T1,T1,T1,T1,T1,T1,MESH,MSK,MASKEL,LISFON)
!
      ENDIF
!
!-----------------------------------------------------------------------
!
      IF(LISFON.EQ.0) THEN
        WRITE(LU,*)
        WRITE(LU,*) 'CORFON (TELEMAC2D): NO MODIFICATION OF BOTTOM'
        WRITE(LU,*)
      ELSE
        WRITE(LU,*)
        WRITE(LU,*) 'CORFON (TELEMAC2D): ',LISFON,' BOTTOM SMOOTHINGS'
        WRITE(LU,*)
      ENDIF
!  Bosse à t=0
!
      PI=3.141592653D0
      DO I=1,NPOIN
        ZF%R(I) = 0.D0
        IF (X(I) .GE. 2.D0 .AND. X(I) .LE. 10.D0) THEN
          ZF%R(I)=0.1D0*SIN(PI*(X(I)-2.D0)/8.D0)**2
        ENDIF
      ENDDO
!
!-----------------------------------------------------------------------
!
      RETURN
      END

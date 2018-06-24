σβήσε τα πάντα στον φάκελο constant/polymesh εκτός από το blockMesh 
σβήσε όλον τον φάκελο extendedFeatureEdgeMesh
σβήσε στον φάκελο triSurface ότι τελειώνει σε .eMesh
σβήσε στον φάκελο 0 τα πάντα εκτός από U, p , T


εντολές:
surfaceConvert art.stl out.stl -clean -scale 0.01
scale 0.01
blockMesh
surfaceFeatureExtract
snappyHexMesh -overwrite
rhoPimpleFoam


ΠΡΟΕΙΔΟΠΟΙΗΣΗ
τρέχει για αιώνες (~12 ώρες)
αύξησε το timestep



Εύκολη δυνατότητα βελτίωσης παίζοντας με τον κώδικα:
μέσα στο loop να πάρουμε την μέγιστη ταχύτητα (πιθανώς με heap sort, sorted list, ή κάποιον έξυπνο τρόπο)
να εφαρμόσουμε την CFL condition και να βγάλουμε το μέγιστο timestep που έχει ευστάθεια
ΠΙΘΑΝΟ ΠΡΟΒΛΗΜΑ irregular mesh --> CFL length hard to determine


ΕΡΏΤΗΣΗ στον Mathias
άραγε μπορεί να γίνει και σε κάθε κελί ξεχωριστά, με κάθε κελί να έχει διαφορετικό timestep, να δέχεται την τελευταία τιμή των κοντινών πριν αλλάξει και μόνο στα write intervals να περιμένει να συγχρονιστούν όλα;



TODO
παραλληλισμός  (όχι manual αλλά optimal μοιρασμός του domain)



# reservation-system

Main goals :

  Ability for client to book a service at specific date from selected service provider, when it is available.

Project assumptions :

  3 user types :
    1. Administrator
      * Can add / edit / remove services accessible for client to book.
      * Can add / edit / remove service providers information.
      * Can add / edit / remove reservations created by clients.
    2. Service provider
      * Should have defined :
        - working hours for every day of week;
        - slot amount - number of clients he can handle at the same time.
        - services he supports.
      * Can add / edit / remove informations about himself.
      * Can check current reservation which include him.
    3. Client
      * Can add reservations which apply to him.
      * Can edit / remove his reservations atleast 24h before reservation date.
  
Example : 

  Administrator have a salon and 2 workers (Filip and Adam) in his company.
  Adam is a barber, same as Filip, but he is great make-up artist aswell. 
  Each of them can serve 1 client at the same time, and work from Monday to Friday, starting at 7:00 AM and ending at 3:00 PM.
  Administrator rented a gym class, and as a former dancer, he wants to give lessons every Friday and Sunday.
  Gym class can fit 20 people.

  In this situation Administrator can create 3 services :
    - barber services.
    - make-up services.
    - dance lessons.
  
  But he can be more specific and create something like that :
    - regular hair-cut.
    - hair styling.
    - full head colour.
    - face make-up.
    - eye make-up.
    - full make-up.
    - salsa classes.
    - tango lesssons.
    
    
  
  
  
  

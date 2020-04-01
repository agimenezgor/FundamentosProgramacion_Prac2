#include <stdio.h>
#include <math.h>
#include <string.h>
#include <api.h>
#include "passenger.h"
#include "plane.h"
#include "flight.h"
#include "queue.h"
#include "list.h"

void appData_init(tAppData *object) {
	/* Set parent folder as the default path */
	strcpy(object->path, "../");
	
	/* Initialize the passenger table */
	passengerTable_init(&(object->passengers));
	
	/* Initialize the planes table */
	planesTable_init(&(object->planes));
    
	/* Initialize the flights table */
	flightsTable_init(&(object->flights));
}

void appData_load(tAppData *object, tError *retVal) {
	char path[MAX_LINE];
	*retVal = OK;
	
	/* Load the table of planes */
	sprintf(path,"%splanes.txt", object->path);
	planesTable_load(&(object->planes), path, retVal);
	if(*retVal!=OK) {
		printf("ERROR: Error reading the file of planes\n");
	}

	/* Load the table of passengers */
	sprintf(path,"%spassengers.txt", object->path);
	passengerTable_load(&(object->passengers), path, retVal);
	if(*retVal!=OK) {
		printf("ERROR: Error reading the file of passengers\n");
	}

	/* Load the table of flights */
	sprintf(path,"%sflights.txt", object->path);
	flightsTable_load(&(object->flights), path, retVal);
	if(*retVal!=OK) {
		printf("ERROR: Error reading the file of flights\n");
	}
}

void appData_save(tAppData object, tError *retVal)  {
	char path[MAX_LINE];
	*retVal = OK;
	
	/* Save the table of planes */
	sprintf(path,"%splanes.txt", object.path);
	planesTable_save(object.planes, path, retVal);
	if(*retVal!=OK) {
		printf("ERROR: Error saving the file of planes\n");
	}
	
	/* Save the table of passengers */
	sprintf(path,"%spassengers.txt", object.path);
	passengerTable_save(object.passengers, path, retVal);
	if(*retVal!=OK) {
		printf("ERROR: Error saving the file of passengers\n");
	}

	/* Save the table of flights */
	sprintf(path,"%sflights.txt", object.path);
	flightsTable_save(object.flights, path, retVal);
	if(*retVal!=OK) {
		printf("ERROR: Error saving the file of flights\n");
	}
}

void appData_setPath(tAppData *object, const char *path)  {		
	strncpy(object->path, path, 255);	
}


/*********************** 
 *        API
 **********************/

void getPlanes(tAppData object, tPlaneTable *result) {
	*result = object.planes;	
}

void getPlane(tAppData object, tPlaneId planeId, tPlane *plane, tError *retVal) {
	
	int i;
	*retVal = OK;

	/* Check if there is a plane with this id */
	i = planesTable_find(object.planes, planeId);
	if (i!=NO_PLANE) {
		plane_cpy(plane,object.planes.table[i]);
	} else {
		*retVal = ERR_ENTRY_NOT_FOUND;
	}
}

void addPlane(tAppData *object, tPlane plane, tError *retVal) {
	*retVal = OK;
	tPlane tmp;

	/* Check if there is another plane with the same id */
	getPlane(*object, plane.id, &tmp, retVal);
	if(*retVal==OK) {
		*retVal = ERR_DUPLICATED_ENTRY;
	} else {
		/* Add the new plane using the plane table method */
		planesTable_add(&(object->planes), plane, retVal);
	}
}

void getPassengers(tAppData object, tPassengerTable *result) {
	*result = object.passengers;	
}

void getPassenger(tAppData object, tPassengerId id, tPassenger *passenger, tError *retVal) {
	
	int i;
	*retVal = OK;
	
	/* Check if there is a passenger with this id */
	i = passengerTable_find(object.passengers, id);
	if (i!=NO_PASSENGER) {
		passenger_cpy(passenger,object.passengers.table[i]);
	} else {
		*retVal = ERR_ENTRY_NOT_FOUND;
	}
}

void addPassenger(tAppData *object, tPassenger passenger, tError *retVal) {
	*retVal = OK;
	tPassenger tmpPassenger;
    
	/* Check if there is another passenger with the same id */
	getPassenger(*object, passenger.id, &tmpPassenger, retVal);
	if(*retVal==OK) {
		*retVal = ERR_DUPLICATED_ENTRY;
	} else {
		/* Add the new passenger using the passenger table method */
		passengerTable_add(&(object->passengers), passenger, retVal);
	}
}

void removePassenger(tAppData *object, tPassenger passenger) {
	
	/* Call the method from the passengers table*/
	passengerTable_del(&(object->passengers), passenger);
}

void getFlights(tAppData object, tFlightTable *result) {
    
    *result = object.flights;
}

void getFlight(tAppData object, tFlightId id, tFlight *flight, tError *retVal) {
    
	int i;
	*retVal = OK;

	/* Check if there is a flight with this id */
	i = flightsTable_find(object.flights, id);
	if (i!=NO_FLIGHT) {
		flight_cpy(flight,object.flights.table[i]);
	} else {
		*retVal = ERR_ENTRY_NOT_FOUND;
	}    
}

void addFlight(tAppData *object, tFlight flight, tError *retVal) {
    
	*retVal = OK;
	tFlight tmpFlight;
    
	/* Check if there is another flight with the same id */
	getFlight(*object, flight.id, &tmpFlight, retVal);
	if(*retVal==OK) {
       *retVal = ERR_DUPLICATED_ENTRY;
	} else {
		/* Add the new flight using the flight table method */
		flightsTable_add(&(object->flights), flight, retVal);
	}    
}

void checkData(tFlight flight, tPassengerTable passengers, tPlaneTable planes, tError *retVal )
{
    /******************* PR2 - EX1 *****************/
















    /***********************************************/
}

void getThresholdRows( int totalSeats,
                       int *max_priority_row, int *max_front_row, int *max_back_row)
{
    *max_priority_row= (int)((float)PRIORITY_ROW_PERCENT * (float)totalSeats / (float)MAX_SEATS_PER_ROW);
    *max_front_row= *max_priority_row + (int)((float)FRONT_ROW_PERCENT * (float)totalSeats / (float)MAX_SEATS_PER_ROW);
    *max_back_row= *max_front_row + (int)((float)BACK_ROW_PERCENT * (float)totalSeats / (float)MAX_SEATS_PER_ROW);   
}

void assignSeat( tBooking booking, tBoarding *card, int totalSeats,
                 int maxPriorityRow, int maxFrontRow, int maxBackRow,
                 int *seatsPriority, int *seatsFront, int *seatsBack )
{   
    /* initialize boarding card */
    card->passengerId= booking.passenger;
    card->row = NO_ROW;
    card->seat= NO_SEAT;

    /* calculate the proper seat to distribute weight along the plane */
    if (booking.priority) 
    {
        /* assign a priority seat if it's a priority booking and there's a free seat */
        if (*seatsPriority < maxPriorityRow*MAX_SEATS_PER_ROW) 
        {
            card->row = 1 + (*seatsPriority / MAX_SEATS_PER_ROW);
            card->seat= (char)((int)'A' + (*seatsPriority % MAX_SEATS_PER_ROW));          
            *seatsPriority = *seatsPriority + 1;
        }
    } 
    else 
    {
        /* assign a front seat if first half plane has less assigned seats than second half 
         * and there is a free front seat */
        if (*seatsPriority + *seatsFront < *seatsBack &&
            *seatsFront < (maxFrontRow-maxPriorityRow)*MAX_SEATS_PER_ROW) 
        {
            card->row = maxPriorityRow + 1 + (*seatsFront / MAX_SEATS_PER_ROW);
            card->seat= (char)((int)'A' + (*seatsFront % MAX_SEATS_PER_ROW));                      
            *seatsFront = *seatsFront + 1;
        } 
        else 
        {
            /* assign a back seat on other cases */
            if (*seatsBack < (maxBackRow-maxFrontRow)*MAX_SEATS_PER_ROW) 
            {
                card->row = maxFrontRow + 1 + (*seatsBack / MAX_SEATS_PER_ROW);
                card->seat= (char)((int)'A' + (*seatsBack % MAX_SEATS_PER_ROW));
                *seatsBack = *seatsBack + 1;
            }
        }
    }
}

void checkinFlight(tFlight *flight, tPlane plane, tError *retVal ) 
{
    /******************* PR2 - EX2 *****************/

















    /***********************************************/
}

void accomodatePassenger( tPlane *plane, tBoarding boarding, tError *retVal )
{
    int row, seat, max_rows;
    tBoolean found;
    
    *retVal= OK;
    
    if (plane->occupiedSeats < plane->seats)
    {
        if (boarding.seat == NO_SEAT)
        {
            /* try to accomodate passenger with a non-assigned seat */
            max_rows= plane->seats / MAX_SEATS_PER_ROW;
            found= FALSE;
            row= 0;
            while (row < max_rows && !found)
            {
                seat= 0; 
                while (seat < MAX_SEATS_PER_ROW && !found)
                {
                    found= (plane->layout[row][seat]==NO_PASSENGER);
                    if (!found)
                         seat++;
                }
                if (!found)
                     row++;
            }
            
            if (found)
            {
                plane->layout[row][seat]= boarding.passengerId; 
                plane->occupiedSeats++;                
            }
            else
                *retVal= ERR_NO_FREE_GAP;
        }
        else
        {
            /* accomodate passenger with assigned seat */
            row = boarding.row-1;
            seat= (int)(boarding.seat)-(int)'A';
            plane->layout[row][seat]= boarding.passengerId; 
            plane->occupiedSeats++;
        }
    }
    else
        *retVal= ERR_NO_FREE_GAP;
}

void boardFlight(tFlight *flight, tPassengerTable *passengers, tPlane *plane, tError *retVal ) 
{
    /******************* PR2 - EX3 *****************/
















    /***********************************************/
}

void closeFlight( tFlight *flight ) 
{
    flight->status= CLOSED;
}

void assignBoardingGate( tFlight *flight )
{
    int nPassengers;
    
    nPassengers= bookingList_length(flight->bookings);
    if (nPassengers < BOARDING_THRESHOLD_1)
        flight->boardingGate= BOARDING_GATE_1;
    else if (nPassengers < BOARDING_THRESHOLD_2)
        flight->boardingGate= BOARDING_GATE_2;
    else 
        flight->boardingGate= BOARDING_GATE_3;
}

void setUpPlane( tPlane *plane )
{
    /* frees all potential occupied seats for the given plane */
    init_occupied_seats(plane);
}

void processFlight(tFlight *flight, tPassengerTable *passengers, tPlaneTable *planes, tError *retVal ) 
{
    int index;
    tPlane plane;

    /* check the flight data is correct */
    checkData( *flight, *passengers, *planes, retVal );
    if (*retVal == OK)
    {
        index= planesTable_find(*planes, flight->plane);
        if (index != NO_PLANE) 
        {
            /* get the plane */
            plane_cpy(&plane, planes->table[index]);
            
            /* assign boarding gate */
            assignBoardingGate(flight);
            
            /* begin the checkin process */
            checkinFlight(flight, planes->table[index], retVal);

            /* prepare plane for the boarding */
            setUpPlane(&plane);
            
            /* begin boarding passenger into the plane */
            boardFlight(flight, passengers, &plane, retVal);
            
            /* close flight */
            closeFlight(flight);
        }
    }
}

int searchNextFlight( tFlightTable flights, tAirport origin, tAirport destination, int startIndex )
{
    int foundIndex= NO_FLIGHT;
    
    /******************* PR2 - EX4A *****************/















    /************************************************/
   
    return foundIndex;
}

void reallocatePassengers( tBoardingQueue *queue, tBookingList *list, 
                           tPassengerTable *passengers )
{
    /******************* PR2 - EX4B *****************/















    /************************************************/
}

void processAllFlights(tAppData *object, tError *retVal ) 
{    
    int i, next;
    
    for (i= 0; i < object->flights.nFlights; i++) 
    {
        /* process the current flight */
        processFlight( &object->flights.table[i], &object->passengers, &object->planes, retVal );
        
        /* reallocate overbooked passengers */
        if (boardingQueue_length(object->flights.table[i].overbooking)>0)
        {
            /* search next flight between the same origin and destination airport */
            next= searchNextFlight( object->flights,
                                    object->flights.table[i].originAirport, 
                                    object->flights.table[i].destinationAirport, i+1 );

            /* reallocate passengers from overbooking queue and bookings list */
            if (next != NO_FLIGHT)
                reallocatePassengers( &object->flights.table[i].overbooking, 
                                      &object->flights.table[next].bookings,
                                      &object->passengers );
        }
    }
}
@extends('backend')
  @section('content')





<div class="container-fluid">
	  <!-- Page Heading -->
	  	

	  	
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<div class="row">
					<div class="col-8">
						<h4 class="m-0 font-weight-bold text-info mmfont"> 
			            	Booking List
			            </h4>
					</div>
					<div class="offset-2 col-2">
						<a href="{{route('book.index')}}" class="btn btn-info btn-sm btn-block float-right mmfont">
							<i class="fas fa-backward"></i>
                    Go Back
                  </a>
					</div>
				</div>
	            
	            
	        </div>

	        <div class="card-body">
				
				

	            <div class="table-responsive">
	            	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	            		<thead>
	            			<th>Type</th>
	            			<th>Value</th>
							
						</thead>
						<tbody>
							<tr>
								
								
								<th>Name</th>
								<td>{{$room->user_name}}</td>
							</tr>

							<tr>
								<th>Email</th>
								<td>{{$room->email}}</td>
							</tr>
							<tr>
								<th>Phone No.</th>
								<td>{{$room->phone_no}}</td>
							</tr>
							<tr>
								<th>Address</th>
								<td>{{$room->address}}</td>
							</tr>
							<tr>
								<th>Room Type</th>
								<td>{{$room->room->roomtype->name}}</td>
							</tr>
							<tr>
								<th>Township</th>
								<td>{{$room->room->township->name}}</td>
							</tr>
							<tr>
								<th>Booking Date</th>
								<td>{{$room->booking_date}}</td>
							</tr>
							<tr>
								<th>Time</th>
								<td>{{$room->time}}</td>
							</tr>
							<tr>
								<th>Status</th>
								<td>
									
									{{$room->status}} 
									
									</td>
								
							</tr>
						</tbody>
					</table>
	            </div>
	        </div>
		</div>

	</div>



	

  @endsection
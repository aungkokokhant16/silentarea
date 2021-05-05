@extends('backend')
  @section('content')

<div class="container-fluid">
	  <!-- Page Heading -->
	  	

	  	
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<div class="row">
					<div class="col-8">
						<h4 class="m-0 font-weight-bold text-info mmfont"> 
			            	Room Detail
			            </h4>
					</div>
					<div class="offset-2 col-2">
						<a href="{{route('room.index')}}" class="btn btn-info btn-sm btn-block float-right mmfont">
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
								
								
								<th>Price</th>
								<td>{{$room->price}}</td>
							</tr>

							<tr>
								<th>Photo</th>
								<td><img src="{{asset($room->photo)}}" width="100" height="100"></td>
							</tr>
							<tr>
								<th>Description</th>
								<td>{{$room->description}}</td>
							</tr>
							<tr>
								<th>Room Type</th>
								<td>{{$room->roomtype->name}}</td>
							</tr>
							<tr>
								<th>Township</th>
								<td>{{$room->township->name}}</td>
							</tr>
							<tr>
								<th>Size</th>
								<td>{{$room->size}}</td>
							</tr>
							<tr>
								<th>Capacity</th>
								<td>{{$room->capacity}}</td>
							</tr>
							<tr>
								<th>Service</th>
								<td>
									@foreach($room->services as $service)
									{{$service->name}} ,
									@endforeach
									</td>
								
							</tr>
						</tbody>
					</table>
						

						
								
									
									
									
									
									
									
									
									
									
									
					


					

			
	            </div>
	        </div>
		</div>

	</div>

  @endsection
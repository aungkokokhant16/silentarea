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
						<!-- <a href="{{route('book.create')}}" class="btn btn-info btn-sm btn-block float-right mmfont">
							<i class="fas fa-plus"></i>
			            	Add New
			            </a> -->
					</div>
				</div>
	            
	            
	        </div>

	        <div class="card-body">
				
				

	            <div class="table-responsive">
	            	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
							<tr align="center">
								<th>No</th>
								
								<th>Name</th>
								<th>Email</th>
								<th>Phone No.</th>
								<th>Address</th>
								<th>Rom Id</th>
								<th>Booking Date</th>
								<th>Time</th>
								<th>Status</th>
								<td align="center"><b>Action</b></td>
							</tr>
						</thead>

						<tbody>
								@php
								$i=1;
								@endphp
								@foreach($booking as $row)
								<tr align="center">
									<td>{{$i++}}</td>
									
									<td>{{$row->user_name}}</td>
									<td>{{$row->email}}</td>
									<td>{{$row->phone_no}}</td>
									<td>{{$row->address}}</td>
									<td>{{$row->room_id}}</td>
									<td>
									{{$row->booking_date}}
									</td>
									<td>
									{{$row->time}}
									</td>
									<td>{{$row->status}}</td>
									<td>
									<a href="{{route('book.show',$row->id)}}" class="btn btn-outline-success mmfont">
										<i class="fas fa-eye"></i> 
										Details
									</a>
									<!-- <a href="{{route('book.edit',$row->id)}}" class="btn btn-outline-primary mmfont">
										<i class="fas fa-edit"></i> 
										Edit
									</a> -->

									<form method="post" action="{{route('book.destroy',$row->id)}}" class="d-inline-block">
										@csrf
										@method('DELETE')

								<button type="submit" class="btn btn-outline-danger mmfont show_confirm"><i class="fas fa-trash"></i> Delete</button>
					</form>


					

				</td>
			</tr>
			@endforeach
		</tbody>

						

	            	</table>
	            </div>
	        </div>
		</div>

	</div>



	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- <script>
    $(".delete").on("submit", function(){
        return confirm("Are you sure?");
    });
</script>
 -->



<script type="text/javascript">
    $('.show_confirm').click(function(e) {
        if(!confirm('Are you sure you want to delete this?')) {
            e.preventDefault();
        }
    });
</script>

  @endsection
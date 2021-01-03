
package sensor_reader_pkg;
	
	typedef struct{
		bit enable;
      bit   valid;
      bit[15:0]  data;
    }datastream_t;

   typedef struct {
		datastream_t  i;
		datastream_t  q;
	}channel_t;
	

  
  endpackage

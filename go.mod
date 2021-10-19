module s3-adapter

go 1.16

replace s3-adapter/your-public-lib v0.0.0 => ./pkg/your-public-lib

replace s3-adapter/your-private-lib v0.0.0 => ./internal/your-private-lib

require (
	// other modules

	// pkg modules
	s3-adapter/your-public-lib v0.0.0

	// internal modules
	s3-adapter/your-private-lib v0.0.0
)

// external modules

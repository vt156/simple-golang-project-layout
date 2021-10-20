module s3-adapter

go 1.16

replace your-public-lib v0.0.0 => ./pkg/your-public-lib

replace your-private-lib v0.0.0 => ./internal/your-private-lib

require (
	// other modules

	// pkg modules
	your-public-lib v0.0.0

	// internal modules
	your-private-lib v0.0.0
)

// external modules

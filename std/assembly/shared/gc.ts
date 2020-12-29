/** Garbage collection strategy. */
export enum Strategy {
  /** No need for garbage collection. */
  None = 0,
  /** Manual collection invoked from the host. */
  Simple = 1,
  /** Automatic collection with bells and whistles. */
  Automatic = 2
}

export function logInfo(...message: unknown[]): void {
  console.log(new Date().toISOString(), "INFO", ...message);
}

export function logWarning(...message: unknown[]): void {
  console.warn(new Date().toISOString(), "WARN", ...message);
}

export function logError(...message: unknown[]): void {
  console.error(new Date().toISOString(), "ERROR", ...message);
}

FROM alpine:latest 
RUN mkdir /app 
ADD app /app/ 
WORKDIR /app 
CMD ["/app/app"]

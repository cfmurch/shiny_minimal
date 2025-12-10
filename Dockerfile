FROM rocker/shiny:4.3.1

# Copy minimal app
COPY app.R /srv/shiny-server/

# ShinyProxy requires the app to start manually:
CMD ["R", "-e", "shiny::runApp('/srv/shiny-server', host='0.0.0.0', port=3838)"]
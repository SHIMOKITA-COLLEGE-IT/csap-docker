FROM gcr.io/cloud-sql-connectors/cloud-sql-proxy
ENV GCP_SA_KEY="hoge"
RUN echo $GCP_SA_KEY > sa_key
ENV INSTANCE_CONNECTION_NAME="hoge"
CMD ["./cloud-sql-proxy", "$INSTANCE_CONNECTION_NAME","--credentials-file ./sa_key"]
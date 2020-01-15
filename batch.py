from cassandra import ConsistencyLevel
from cassandra.cluster import Cluster
from cassandra.query import BatchStatement


if __name__ == "__main__":
    cluster = Cluster(['127.0.0.1'], port=9042)
    session = cluster.connect('plain', wait_for_all_pools=True)
    session.execute('USE plain')
    session.execute(
        "BEGIN BATCH "
        "UPDATE plain.Users SET username = 'artem' WHERE id = 1;"
        "UPDATE plain.UserDocuments SET username = 'artem' WHERE user_id = 1;"
        "APPLY BATCH;")
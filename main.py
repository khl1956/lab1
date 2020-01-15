from cassandra.cluster import Cluster

cluster = Cluster(['127.0.0.1'], port=9042)

if __name__ == "__main__":
    session = cluster.connect('plain')
    session.execute('USE plain')

    #USERS

    session.execute("insert into plain values ([{adress:asdas,n_v:10}], 1)")
    session.execute("insert into plain values ([{adress:asdasdx, n_v:100}], 1)")
    session.execute("select * from plain ")
    session.execute("create table drinks_on_plain(number int drink strprimary key (number,drink))")
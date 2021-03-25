import {Column, Entity, PrimaryColumn} from 'typeorm';

@Entity({name:'users'})
export class User {
    @PrimaryColumn()
    id: number;

    @Column()
    first_name: string;

    @Column()
    last_name: string;

    @Column()
    email: string;

    @Column()
    birthdate: string;

    @Column()
    added: string;

}

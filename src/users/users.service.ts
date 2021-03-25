import {Injectable} from '@nestjs/common';
import {InjectConnection, InjectRepository} from '@nestjs/typeorm';
import {getConnection, Repository} from "typeorm";
import {User} from "./user.entity";

@Injectable()
export class UsersService {
    constructor(
        @InjectConnection('localhost')
        @InjectRepository(User)
        private UserRepository: Repository<User>) {
    }

    async findAll(): Promise<User[]> {
        return getConnection('localhost').query('SELECT * FROM users');
    }

    async findOne(id: any): Promise<User> {
        return getConnection('localhost').query(`SELECT * FROM users WHERE id = ${id}`);
    }
}

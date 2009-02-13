using System;

namespace AnjLab.FX.Sys
{
    public class EventArgs<T> : EventArgs
    {
        private readonly T _item;

        internal EventArgs(T item)
        {
            _item = item;
        }

        protected EventArgs()
        {
        }

        public T Item
        {
            get { return _item; }
        }

        static readonly EventArgs<T> _empty = new EventArgs<T>();
        public static new EventArgs<T> Empty { get { return _empty; } }
    }

    public class EventArgs<T1, T2> : EventArgs
    {
        private readonly T1 _item1;
        private readonly T2 _item2;

        internal EventArgs(T1 item1, T2 item2)
        {
            _item1 = item1;
            _item2 = item2;
        }

        protected EventArgs()
        {
        }

        public T1 Item1
        {
            get { return _item1; }
        }

        public T2 Item2
        {
            get { return _item2; }
        }

        static readonly EventArgs<T1,T2> _empty = new EventArgs<T1,T2>();
        public static new EventArgs<T1,T2> Empty { get { return _empty; } }
    }

    public class EventArgs<T1, T2, T3> : EventArgs
    {
        private readonly T1 _item1;
        private readonly T2 _item2;
        private readonly T3 _item3;

        internal EventArgs(T1 item1, T2 item2, T3 item3)
        {
            _item1 = item1;
            _item2 = item2;
            _item3 = item3;
        }

        protected EventArgs()
        {
        }

        public T1 Item1
        {
            get { return _item1; }
        }

        public T2 Item2
        {
            get { return _item2; }
        }

        public T3 Item3
        {
            get { return _item3; }
        }

        static readonly EventArgs<T1, T2, T3> _empty = new EventArgs<T1, T2, T3>();
        public static new EventArgs<T1, T2, T3> Empty { get { return _empty; } }
    }

    /// <summary>
    /// Syntax helper
    /// </summary>
    public static class EventArg
    {
        public static EventArgs<TItem> New<TItem>(TItem item)
        {
            return new EventArgs<TItem>(item);
        }

        public static EventArgs<TItem1, TItem2> New<TItem1, TItem2>(TItem1 item1, TItem2 item2)
        {
            return new EventArgs<TItem1, TItem2>(item1, item2);
        }

        public static EventArgs<T1, T2, T3> New<T1, T2, T3>(T1 item1, T2 item2, T3 item3)
        {
            return new EventArgs<T1, T2, T3>(item1, item2, item3);
        }

        public static EventArgs<TItem> Empty<TItem>()
        {
            return EventArgs<TItem>.Empty;
        }
    }
}
